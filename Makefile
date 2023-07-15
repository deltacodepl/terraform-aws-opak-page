# commands used for local development

tf-fmt:
	terraform fmt -recursive

tf-validate:
	terraform validate


# prod environment stacks

# prod base

base-init:
	terraform -chdir=infra/base init

base-plan:
	terraform -chdir=infra/base plan

base-apply:
	terraform -chdir=infra/base apply  --auto-approve

base-destroy:
	terraform -chdir=infra/base destroy

# prod app

prod-app-init:
	TF_LOG=ERROR terraform -chdir=examples/prod/app init 2> logs.txt

prod-app-plan:
	terraform -chdir=examples/prod/app plan

prod-app-apply:
	terraform -chdir=examples/prod/app apply

prod-app-destroy:
	terraform -chdir=examples/prod/app destroy
