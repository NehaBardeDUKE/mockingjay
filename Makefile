format:
	cargo fmt --quiet

lint:
	cargo clippy --quiet

test:
	cargo test --quiet
release-arm:
	cargo lambda build --release --arm64

run:
	cargo run 
deploy:
	cargo lambda deploy
invoke:
	cargo lambda invoke --remote \
  		--data-ascii '{"stmt": "Hey how r u"}' \
  		--output-format json \
  		mockingjay
all: format lint test run 