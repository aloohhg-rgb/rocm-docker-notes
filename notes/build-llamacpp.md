# building llama.cpp with HIP (braindump)

I haven't settled on one Dockerfile. Rough sketch:

```dockerfile
FROM rocm/dev-ubuntu-22.04:latest
RUN apt-get update && apt-get install -y git cmake build-essential
WORKDIR /src
RUN git clone https://github.com/ggerganov/llama.cpp.git
WORKDIR /src/llama.cpp
# flags drift — check upstream README the day you build
RUN cmake -B build -DGGML_HIP=ON && cmake --build build -j$(nproc)
```

Then copy `build/bin/llama-server` into a slim runtime image, or just run from the build tree when debugging.

Open questions:
- does upstream still want `AMDGPU_TARGETS` set explicitly?
- flashattn / MMA flags for MI300X — TBD once I have hardware
