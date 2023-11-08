#!/bin/bash

rustup default nightly
rustup update
cargo install --path .
