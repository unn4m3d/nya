@[Link("openal")]
lib AL
  NONE = 0
  FALSE = 0
  TRUE = 1
  SOURCE_RELATIVE = 514
  CONE_INNER_ANGLE = 4097
  CONE_OUTER_ANGLE = 4098
  PITCH = 4099
  POSITION = 4100
  DIRECTION = 4101
  VELOCITY = 4102
  LOOPING = 4103
  BUFFER = 4105
  GAIN = 4106
  MIN_GAIN = 4109
  MAX_GAIN = 4110
  ORIENTATION = 4111
  SOURCE_STATE = 4112
  INITIAL = 4113
  PLAYING = 4114
  PAUSED = 4115
  STOPPED = 4116
  BUFFERS_QUEUED = 4117
  BUFFERS_PROCESSED = 4118
  SEC_OFFSET = 4132
  SAMPLE_OFFSET = 4133
  BYTE_OFFSET = 4134
  SOURCE_TYPE = 4135
  STATIC = 4136
  STREAMING = 4137
  UNDETERMINED = 4144
  FORMAT_MONO8 = 4352
  FORMAT_MONO16 = 4353
  FORMAT_STEREO8 = 4354
  FORMAT_STEREO16 = 4355
  REFERENCE_DISTANCE = 4128
  ROLLOFF_FACTOR = 4129
  CONE_OUTER_GAIN = 4130
  MAX_DISTANCE = 4131
  FREQUENCY = 8193
  BITS = 8194
  CHANNELS = 8195
  SIZE = 8196
  UNUSED = 8208
  PENDING = 8209
  PROCESSED = 8210
  NO_ERROR = 0
  INVALID_NAME = 40961
  INVALID_ENUM = 40962
  INVALID_VALUE = 40963
  INVALID_OPERATION = 40964
  OUT_OF_MEMORY = 40965
  VENDOR = 45057
  VERSION = 45058
  RENDERER = 45059
  EXTENSIONS = 45060
  DOPPLER_FACTOR = 49152
  DOPPLER_VELOCITY = 49153
  SPEED_OF_SOUND = 49155
  DISTANCE_MODEL = 53248
  INVERSE_DISTANCE = 53249
  INVERSE_DISTANCE_CLAMPED = 53250
  LINEAR_DISTANCE = 53251
  LINEAR_DISTANCE_CLAMPED = 53252
  EXPONENT_DISTANCE = 53253
  EXPONENT_DISTANCE_CLAMPED = 53254
  fun enable = alEnable(capability : Alenum)
  alias Alenum = LibC::Int
  fun disable = alDisable(capability : Alenum)
  fun is_enabled = alIsEnabled(capability : Alenum) : Alboolean
  alias Alboolean = LibC::Char
  fun get_string = alGetString(param : Alenum) : Alchar*
  alias Alchar = LibC::Char
  fun get_booleanv = alGetBooleanv(param : Alenum, data : Alboolean*)
  fun get_integerv = alGetIntegerv(param : Alenum, data : Alint*)
  alias Alint = LibC::Int
  fun get_floatv = alGetFloatv(param : Alenum, data : Alfloat*)
  alias Alfloat = LibC::Float
  fun get_doublev = alGetDoublev(param : Alenum, data : Aldouble*)
  alias Aldouble = LibC::Double
  fun get_boolean = alGetBoolean(param : Alenum) : Alboolean
  fun get_integer = alGetInteger(param : Alenum) : Alint
  fun get_float = alGetFloat(param : Alenum) : Alfloat
  fun get_double = alGetDouble(param : Alenum) : Aldouble
  fun get_error = alGetError : Alenum
  fun is_extension_present = alIsExtensionPresent(extname : Alchar*) : Alboolean
  fun get_proc_address = alGetProcAddress(fname : Alchar*) : Void*
  fun get_enum_value = alGetEnumValue(ename : Alchar*) : Alenum
  fun listenerf = alListenerf(param : Alenum, value : Alfloat)
  fun listener3f = alListener3f(param : Alenum, value1 : Alfloat, value2 : Alfloat, value3 : Alfloat)
  fun listenerfv = alListenerfv(param : Alenum, values : Alfloat*)
  fun listeneri = alListeneri(param : Alenum, value : Alint)
  fun listener3i = alListener3i(param : Alenum, value1 : Alint, value2 : Alint, value3 : Alint)
  fun listeneriv = alListeneriv(param : Alenum, values : Alint*)
  fun get_listenerf = alGetListenerf(param : Alenum, value : Alfloat*)
  fun get_listener3f = alGetListener3f(param : Alenum, value1 : Alfloat*, value2 : Alfloat*, value3 : Alfloat*)
  fun get_listenerfv = alGetListenerfv(param : Alenum, values : Alfloat*)
  fun get_listeneri = alGetListeneri(param : Alenum, value : Alint*)
  fun get_listener3i = alGetListener3i(param : Alenum, value1 : Alint*, value2 : Alint*, value3 : Alint*)
  fun get_listeneriv = alGetListeneriv(param : Alenum, values : Alint*)
  fun gen_sources = alGenSources(n : Alsizei, sources : Aluint*)
  alias Alsizei = LibC::Int
  alias Aluint = LibC::UInt
  fun delete_sources = alDeleteSources(n : Alsizei, sources : Aluint*)
  fun is_source = alIsSource(sid : Aluint) : Alboolean
  fun sourcef = alSourcef(sid : Aluint, param : Alenum, value : Alfloat)
  fun source3f = alSource3f(sid : Aluint, param : Alenum, value1 : Alfloat, value2 : Alfloat, value3 : Alfloat)
  fun sourcefv = alSourcefv(sid : Aluint, param : Alenum, values : Alfloat*)
  fun sourcei = alSourcei(sid : Aluint, param : Alenum, value : Alint)
  fun source3i = alSource3i(sid : Aluint, param : Alenum, value1 : Alint, value2 : Alint, value3 : Alint)
  fun sourceiv = alSourceiv(sid : Aluint, param : Alenum, values : Alint*)
  fun get_sourcef = alGetSourcef(sid : Aluint, param : Alenum, value : Alfloat*)
  fun get_source3f = alGetSource3f(sid : Aluint, param : Alenum, value1 : Alfloat*, value2 : Alfloat*, value3 : Alfloat*)
  fun get_sourcefv = alGetSourcefv(sid : Aluint, param : Alenum, values : Alfloat*)
  fun get_sourcei = alGetSourcei(sid : Aluint, param : Alenum, value : Alint*)
  fun get_source3i = alGetSource3i(sid : Aluint, param : Alenum, value1 : Alint*, value2 : Alint*, value3 : Alint*)
  fun get_sourceiv = alGetSourceiv(sid : Aluint, param : Alenum, values : Alint*)
  fun source_playv = alSourcePlayv(ns : Alsizei, sids : Aluint*)
  fun source_stopv = alSourceStopv(ns : Alsizei, sids : Aluint*)
  fun source_rewindv = alSourceRewindv(ns : Alsizei, sids : Aluint*)
  fun source_pausev = alSourcePausev(ns : Alsizei, sids : Aluint*)
  fun source_play = alSourcePlay(sid : Aluint)
  fun source_stop = alSourceStop(sid : Aluint)
  fun source_rewind = alSourceRewind(sid : Aluint)
  fun source_pause = alSourcePause(sid : Aluint)
  fun source_queue_buffers = alSourceQueueBuffers(sid : Aluint, num_entries : Alsizei, bids : Aluint*)
  fun source_unqueue_buffers = alSourceUnqueueBuffers(sid : Aluint, num_entries : Alsizei, bids : Aluint*)
  fun gen_buffers = alGenBuffers(n : Alsizei, buffers : Aluint*)
  fun delete_buffers = alDeleteBuffers(n : Alsizei, buffers : Aluint*)
  fun is_buffer = alIsBuffer(bid : Aluint) : Alboolean
  fun buffer_data = alBufferData(bid : Aluint, format : Alenum, data : Alvoid*, size : Alsizei, freq : Alsizei)
  alias Alvoid = Void
  fun bufferf = alBufferf(bid : Aluint, param : Alenum, value : Alfloat)
  fun buffer3f = alBuffer3f(bid : Aluint, param : Alenum, value1 : Alfloat, value2 : Alfloat, value3 : Alfloat)
  fun bufferfv = alBufferfv(bid : Aluint, param : Alenum, values : Alfloat*)
  fun bufferi = alBufferi(bid : Aluint, param : Alenum, value : Alint)
  fun buffer3i = alBuffer3i(bid : Aluint, param : Alenum, value1 : Alint, value2 : Alint, value3 : Alint)
  fun bufferiv = alBufferiv(bid : Aluint, param : Alenum, values : Alint*)
  fun get_bufferf = alGetBufferf(bid : Aluint, param : Alenum, value : Alfloat*)
  fun get_buffer3f = alGetBuffer3f(bid : Aluint, param : Alenum, value1 : Alfloat*, value2 : Alfloat*, value3 : Alfloat*)
  fun get_bufferfv = alGetBufferfv(bid : Aluint, param : Alenum, values : Alfloat*)
  fun get_bufferi = alGetBufferi(bid : Aluint, param : Alenum, value : Alint*)
  fun get_buffer3i = alGetBuffer3i(bid : Aluint, param : Alenum, value1 : Alint*, value2 : Alint*, value3 : Alint*)
  fun get_bufferiv = alGetBufferiv(bid : Aluint, param : Alenum, values : Alint*)
  fun doppler_factor = alDopplerFactor(value : Alfloat)
  fun doppler_velocity = alDopplerVelocity(value : Alfloat)
  fun speed_of_sound = alSpeedOfSound(value : Alfloat)
  fun distance_model = alDistanceModel(distance_model : Alenum)
  fun c_create_context = alcCreateContext(device : Alcdevice, attrlist : Alcint*) : Alccontext
  type Alcdevice = Void*
  alias Alcint = LibC::Int
  type Alccontext = Void*
  fun c_make_context_current = alcMakeContextCurrent(context : Alccontext) : Alcboolean
  alias Alcboolean = LibC::Char
  fun c_process_context = alcProcessContext(context : Alccontext)
  fun c_suspend_context = alcSuspendContext(context : Alccontext)
  fun c_destroy_context = alcDestroyContext(context : Alccontext)
  fun c_get_current_context = alcGetCurrentContext : Alccontext
  fun c_get_contexts_device = alcGetContextsDevice(context : Alccontext) : Alcdevice
  fun c_open_device = alcOpenDevice(devicename : Alcchar*) : Alcdevice
  alias Alcchar = LibC::Char
  fun c_close_device = alcCloseDevice(device : Alcdevice) : Alcboolean
  fun c_get_error = alcGetError(device : Alcdevice) : Alcenum
  alias Alcenum = LibC::Int
  fun c_is_extension_present = alcIsExtensionPresent(device : Alcdevice, extname : Alcchar*) : Alcboolean
  fun c_get_proc_address = alcGetProcAddress(device : Alcdevice, funcname : Alcchar*) : Void*
  fun c_get_enum_value = alcGetEnumValue(device : Alcdevice, enumname : Alcchar*) : Alcenum
  fun c_get_string = alcGetString(device : Alcdevice, param : Alcenum) : Alcchar*
  fun c_get_integerv = alcGetIntegerv(device : Alcdevice, param : Alcenum, size : Alcsizei, data : Alcint*)
  alias Alcsizei = LibC::Int
  fun c_capture_open_device = alcCaptureOpenDevice(devicename : Alcchar*, frequency : Alcuint, format : Alcenum, buffersize : Alcsizei) : Alcdevice
  alias Alcuint = LibC::UInt
  fun c_capture_close_device = alcCaptureCloseDevice(device : Alcdevice) : Alcboolean
  fun c_capture_start = alcCaptureStart(device : Alcdevice)
  fun c_capture_stop = alcCaptureStop(device : Alcdevice)
  fun c_capture_samples = alcCaptureSamples(device : Alcdevice, buffer : Alcvoid*, samples : Alcsizei)
  alias Alcvoid = Void
end
