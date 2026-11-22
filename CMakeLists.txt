idf_component_register(REQUIRES esp_timer espidfada)

idf_component_get_property(espidfada_dir espidfada COMPONENT_DIR)
include("${espidfada_dir}/cmake/constants.cmake")
espidfada_generate_constants(NAME Timer SOURCE "tools/timer_constants.c")
