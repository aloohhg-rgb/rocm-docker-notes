# random gotchas

- **Wrong image family.** Pulling a CUDA `vllm/vllm-openai` tag onto an AMD box is a classic footgun. Always check the Dockerfile / release notes for ROCm.
- **HF cache ownership.** Bind-mounting `~/.cache/huggingface` as root inside the container then as a normal user outside = permission hell. Pick one uid.
- **Port already in use.** I leave things on 8000 / 8080 and then wonder why compose fails. `ss -ltnp | grep 800` first.
- **Compose vs `docker run`.** Compose is nicer for volumes; raw `docker run --device` is nicer when I'm debugging one flag.
- **Don't commit `.env`.** Tokens belong in env or a secrets manager, not git history.

Last updated when I was still on dual-T4 CUDA and daydreaming about ROCm. Take with salt.
