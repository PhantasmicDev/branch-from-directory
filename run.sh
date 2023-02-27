cd $INPUT_TARGET_DIRECTORY
git init

git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"

# Create the new branch
git branch $INPUT_TARGET_BRANCH

# Checkout new branch
git checkout $INPUT_TARGET_BRANCH

git add .
git commit -m $INPUT_COMMIT_MESSAGE

if [[ $INPUT_OVERWRITE_BRANCH_HISTORY == 'true' ]]; then
	git push --force origin $INPUT_TARGET_BRANCH
else
	git push --set-upstream origin $INPUT_TARGET_BRANCH
fi