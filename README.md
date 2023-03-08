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
## Step Functions in Lambda (March 8th 2023)
![image](https://user-images.githubusercontent.com/110474064/223866011-b7b14091-4398-49f3-a91b-f5d1df968145.png)

![image](https://user-images.githubusercontent.com/110474064/223866040-72509a3d-bae9-47b4-9a94-f7bf48c56f20.png)

![image](https://user-images.githubusercontent.com/110474064/223866072-a17a9e50-c29f-4c3f-9678-f399479e08ed.png)

![image](https://user-images.githubusercontent.com/110474064/223866111-888c76f9-995d-481a-9f7e-2031d92ed89d.png)

![image](https://user-images.githubusercontent.com/110474064/223866137-877fd4e8-3907-48e2-a084-2887c6072974.png)

![image](https://user-images.githubusercontent.com/110474064/223866166-b79bfd8d-6e2b-40c5-b507-fe8fb2903041.png)

![image](https://user-images.githubusercontent.com/110474064/223866203-67010071-e7f3-4592-997c-1b3d1acae24e.png)

![image](https://user-images.githubusercontent.com/110474064/223866226-8eefc923-6bc4-4385-aed6-327253eb2a0a.png)

![image](https://user-images.githubusercontent.com/110474064/223866252-87e023d2-cb64-4843-878f-fc6d58e884d9.png)

Failure:

![image](https://user-images.githubusercontent.com/110474064/223866285-b8709f02-eef7-45bc-a2df-cb28332d2a63.png)
![image](https://user-images.githubusercontent.com/110474064/223866360-c408eba6-2f26-4c19-8d58-d8ed03d1d827.png)

Success:

![image](https://user-images.githubusercontent.com/110474064/223866415-3bd99137-e1ca-461a-a0c7-cc7c209d4a4d.png)

![image](https://user-images.githubusercontent.com/110474064/223866437-0152a2c3-5e13-4cf1-a9d1-f6a1aa2855e9.png)

![image](https://user-images.githubusercontent.com/110474064/223866476-ab676732-75c3-40fa-8406-04b8e1ba9c39.png)


