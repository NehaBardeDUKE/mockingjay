# Mockingjay
An annoying tool that repeats what you say to it


### Steps to run

* `make format` to format code
* `make lint` to lint
* `make release-arm` to build for arm which is: `cargo lambda build --release --arm64`
* `make deploy` which is this`cargo lambda deploy`

```Working demo
(.venv) @NehaBardeDUKE ➜ /workspaces/IDS_class_trials/mockingjay (main) $ cargo lambda invoke --remote \
                --data-ascii '{"stmt": "Hey how r u"}' \
                --output-format json \
                mockingjay
{
  "mock": "Hey how r u",
  "req_id": "cffc8dae-945e-4a99-a06b-92c2a5f4e738"
}
(.venv) @NehaBardeDUKE ➜ /workspaces/IDS_class_trials/mockingjay (main) $ cargo lambda invoke --remote \
                --data-ascii '{"stmt": "I asked you first"}' \
                --output-format json \
                mockingjay
{
  "mock": "I asked you first",
  "req_id": "6b2b9936-2f91-4c9a-a041-3cf5f8fa86ab"
}
(.venv) @NehaBardeDUKE ➜ /workspaces/IDS_class_trials/mockingjay (main) $ cargo lambda invoke --remote \
                --data-ascii '{"stmt": "Hey stop that"}' \
                --output-format json \
                mockingjay
{
  "mock": "Hey stop that",
  "req_id": "898d856f-8521-458b-8b5b-2bc4ea865203"
}
```
