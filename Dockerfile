FROM debian:trixie-slim

RUN apt-get update && apt-get install -y --no-install-recommends mit-scheme rlwrap

WORKDIR /work

CMD ["rlwrap", "mit-scheme"]
