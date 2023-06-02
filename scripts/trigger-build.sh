BRANCH_NAME=pac-buildpack-build
git checkout main
git push -d origin ${BRANCH_NAME}
git branch -D ${BRANCH_NAME}
git checkout -b ${BRANCH_NAME}

mkdir -p .tekton
wget https://raw.githubusercontent.com/ch007m/tekton-pac/main/k8s/pipeline-new-buildpacks.yml -O .tekton/pipelinerun.yaml

git add .tekton
git commit -asm "This is a buildpacks build using TektonCI"
#git push --set-upstream origin ${BRANCH_NAME}
git checkout main