require "./render/*"
require "./bindings/sdl2"

module Nya
  @@width = 640.0
  @@height = 480.0
  @@camera_list = [] of Nya::Render::Camera
  @@window : Pointer(LibSDL2::Window)? = nil

  class_property width, height, camera_list
  class_setter window

  def self.window
    @@window.not_nil!
  end

  def self.window?
    @@window
  end

  def self.title=(str)
    LibSDL2.set_window_title @@window.not_nil!, str
  end

  def self.fullscreen!(flags = LibSDL2::WINDOW_FULLSCREEN)
    LibSDL2.set_window_fullscreen @@window.not_nil!, flags
  end

  @@shader_stack = Deque(UInt32).new

  class_property shader_stack
end