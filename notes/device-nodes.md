# device nodes I always forget

On a typical ROCm host you need the container to see:

- `/dev/kfd` — kernel fusion driver (compute)
- `/dev/dri` — render nodes

And usually membership in `video` + `render` groups (or pass `--group-add`).

## symptoms I've hit

| symptom | likely cause |
|---------|--------------|
| `rocminfo` empty / no agents | missing `/dev/kfd` or group |
| torch sees CPU only | wrong image (CUDA tag) or no HIP runtime |
| weird HSA errors on start | gfx version mismatch → sometimes `HSA_OVERRIDE_GFX_VERSION` |
| OOM killer during load | shm too small → try `ipc: host` or bump `shm_size` |

I'm not claiming these are exhaustive. Just the ones that burned an evening.
