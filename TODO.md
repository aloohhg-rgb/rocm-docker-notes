# TODO (messy)

- [ ] try official `rocm/pytorch` vs community vLLM ROCm image side by side
- [ ] figure out whether `--ipc=host` is still required on newer kernels
- [ ] document MI300X-specific device node quirks once I actually have one
- [ ] add a compose profile that mounts HF cache read-only
- [ ] check if `HSA_OVERRIDE_GFX_VERSION` is still a thing people need in 2026
- [ ] llama.cpp HIP build flags — did they stabilize `-DGGML_HIP=ON` yet
- [ ] write down the exact error when `/dev/dri` is missing vs `/dev/kfd`
