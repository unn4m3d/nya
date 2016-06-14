require "sdl2"
require "gl"
require "glu"

width = 640
height = 480

WP_CENTERED = 0x2FFF0000

class Plane
  @vert : Array(Tuple(Float64,Float64,Float64))
  @color : Tuple(Float64,Float64,Float64)
  def initialize(@vert,@color)

  end

  def draw(ox : Float64 = 0.0, oy : Float64 = 0.0, oz : Float64 = 0.0)
    GL.color3f(@color[0],@color[1],@color[2])
    @vert.each do |v|
      GL.vertex3f(v[0],v[1],v[2])
    end
  end
end
def draw_cube(x,y,z)
  GL.clear(GL::COLOR_BUFFER_BIT|GL::DEPTH_BUFFER_BIT)
  GL.load_identity

  GL.translatef(0.0,0.0,-7.0)
  GL.rotatef(x,1.0,0.0,0.0)
  GL.rotatef(y,0.0,1.0,0.0)
  GL.rotatef(z,0.0,0.0,1.0)

  GL.begin_(GL::QUADS)

  planes = [
    Plane.new(
      [
        {1.0,1.0,-1.0},
        {-1.0,1.0,-1.0},
        {-1.0,1.0,1.0},
        {1.0,1.0,1.0}
      ],
      {0.0,1.0,0.0}
    ),
    Plane.new(
      [
        {1.0,-1.0,1.0},
        {-1.0,-1.0,1.0},
        {-1.0,-1.0,-1.0},
        {1.0,-1.0,-1.0}
      ],
      {1.0,0.5,0.0}
    )
  ]

  planes.each{|p|p.draw}

  GL.end_
end

begin
  raise SDL2.get_error.as(String) if SDL2.init(SDL2::INIT_VIDEO) < 0

  SDL2.gl_set_attribute(SDL2::GLattr::GLDOUBLEBUFFER,1)
  SDL2.gl_set_attribute(SDL2::GLattr::GLREDSIZE,6)
  SDL2.gl_set_attribute(SDL2::GLattr::GLBLUESIZE,6)
  SDL2.gl_set_attribute(SDL2::GLattr::GLGREENSIZE,6)

  window = SDL2.create_window("Cube",WP_CENTERED,WP_CENTERED,width,height,SDL2::WindowFlags::WINDOWSHOWN|SDL2::WindowFlags::WINDOWOPENGL)
  gl_ctx = SDL2.gl_create_context(window)

  raise SDL2.get_error.as(String) if window.null?

  GL.clear_color(0.0,0.0,0.0,0.0)
  GL.clear_depth(1.0)
  GL.depth_func(GL::LESS)
  GL.enable(GL::DEPTH_TEST)
  GL.shade_model(GL::SMOOTH)
  GL.matrix_mode(GL::PROJECTION)
  GL.load_identity
  GLU.perspective(45.0,width.to_f/height.to_f,0.1,100.0)

  GL.matrix_mode(GL::MODELVIEW)

  x = 0.0
  y = 0.0
  z = 0.0
  running = true

  while running
    SDL2.poll_event(out evt)
    case evt.type
    when SDL2::EventType::QUIT
      raise "Terminated"
    when SDL2::EventType::KEYDOWN
      raise "Terminated" if evt.key.keysym == '\033'
    end
    x -= 0.5
    y -= 0.5
    z -= 0.5

    draw_cube x,y,z
    GL.flush
    SDL2.gl_swap_window(window)
  end

ensure
  SDL2.quit
end
