# rocm-docker-notes

Personal scratch notes for running ROCm stuff in Docker without losing my mind.

I keep forgetting which image tag actually has hipBLAS / which compose flags need `--device=/dev/kfd`. Dumping the working bits here so future-me doesn't re-google the same three GitHub issues at 2am.

**Status:** notes + stubs. Not a polished product. If an image tag bitrots, open an issue or just yell at me in a PR.

## what's here

```
compose/          docker-compose stubs (vLLM, llama.cpp HIP, bare ROCm shell)
notes/            braindump — device nodes, common failure modes
scripts/          tiny helpers (pull + smoke)
TODO.md           stuff I still haven't tried
```

## quick poke

```bash
# bare ROCm shell — just check the GPU is visible inside the container
docker compose -f compose/rocm-shell.yml up

# vLLM-ish stub (edit the image / model env first)
docker compose -f compose/vllm.yml up

# llama.cpp HIP server stub
docker compose -f compose/llamacpp-hip.yml up
```

I usually pin official ROCm / community images from Docker Hub or the ROCm docs — don't trust random forks without checking digests.

## related

- [amd-mi300x-openai-server](https://github.com/aloohhg-rgb/amd-mi300x-openai-server) — once the container is up, this is what I point at it
- [amd-rocm-benchkit](https://github.com/aloohhg-rgb/amd-rocm-benchkit) — is the GPU even healthy before I blame docker

## license

MIT. Independent notes, not affiliated with AMD / ROCm maintainers.

_(notes accumulate whenever docker eats an afternoon)_
