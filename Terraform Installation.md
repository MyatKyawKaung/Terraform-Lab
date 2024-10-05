## Install Terraform on Windows

Go to Terraform websites https://www.terraform.io/ and Press Download button

![image01](https://github.com/user-attachments/assets/ac72105e-c76c-4c1d-89e7-794a51135148)

Choose your host operating system and executable.

![image02](https://github.com/user-attachments/assets/3e95e3d6-72c8-412d-a4a4-c93756f498a0)

Extract Terraform zip file from your Downloads folder, copy the `terraform` executable file

![image03](https://github.com/user-attachments/assets/46838787-34c0-409c-81c6-c0ea7bbd0c98)

Create a folder named `Terraform` and paste it under `C:\\Program Files\\Terraform` (Note: The exact location doesn't matter, you only need to remember the path where Terraform binaries live.)

![image04](https://github.com/user-attachments/assets/94b2fdc8-cd7e-4cad-8ce5-a667ded2babc)
![image05](https://github.com/user-attachments/assets/a39cf056-977a-48ac-a382-5188eb6be354)

We will need to set our environment variables for terraform

![image06](https://github.com/user-attachments/assets/9dd4a74e-0470-494a-847d-7604d0f8d854)

In Advanced tab > Click `Environment Variables`

![image07](https://github.com/user-attachments/assets/04116678-9778-464d-aecd-14a60cbb1e9b)

In System variables, select path and press `Edit`

![image08](https://github.com/user-attachments/assets/0db48d89-e877-4b5c-be98-89ca2ecc8d10)

Create `New` and paste your folder location `C:\\Program Files\\Terraform`

![image09](https://github.com/user-attachments/assets/97534f25-d512-4ab5-a904-1725ec5bc3d6)

Open your `Powershell` and check `Terraform` is running or not

```jsx
terraform -v
```

![image10](https://github.com/user-attachments/assets/c2805b9f-eb01-4c62-8e4c-f834344cd357)
