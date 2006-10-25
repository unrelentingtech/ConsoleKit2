#!/bin/sh

export G_DEBUG=gc-friendly
export G_SLICE=always-malloc

#valgrind --tool=massif --depth=5  --alloc-fn=g_malloc \
#  --alloc-fn=g_realloc --alloc-fn=g_try_malloc \
#  --alloc-fn=g_malloc0 --alloc-fn=g_mem_chunk_alloc \
#  console-manager --no-daemon

valgrind --tool=memcheck --leak-check=full --show-reachable=yes \
  console-manager --no-daemon
