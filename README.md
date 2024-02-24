## Terraformコマンドの実行環境

### Build

`docker build -t terraform .`

### Run

`docker run -v pwd:/terraform -it --rm=true -v ./app:/app --name=terraform-sample --entrypoint=ash terraform`

## コマンド

- `terraform fmt`
    - 定義ファイルのフォーマットを行う
- `terraform plan`
    - terraform実行計画を表示。apply後の差分を表示する
- `terraform apply`
    - デプロイ実行
- `terraform destroy`
    - デプロイした環境を削除する
