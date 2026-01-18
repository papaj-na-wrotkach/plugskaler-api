#ifndef PLUGSKALER_API_PLUGIN_H
#define PLUGSKALER_API_PLUGIN_H

#if defined(_WIN32)
#define EXPORT __declspec(dllexport)
#else
#define EXPORT __attribute__((visibility("default")))
#endif

#ifdef __cplusplus
extern "C" {
#endif
typedef struct {
	// pointer to the image data
	unsigned char* data;
	// width, height, and number of channels
	int w, h, c;
} Image;

EXPORT void* plugskaler_init(const char* config_path);
EXPORT void plugskaler_deinit(void*);
EXPORT void plugskaler_process(Image* input, Image* output);

#ifdef __cplusplus
} // extern "C"
#endif

#endif // PLUGSKALER_API_PLUGIN_H
