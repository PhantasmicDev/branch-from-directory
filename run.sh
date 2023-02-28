git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"

if git ls-remote --heads origin $INPUT_BRANCH | grep -q $INPUT_BRANCH; then
	git fetch origin $INPUT_BRANCH
fi

git subtree split -P $INPUT_DIRECTORY -b $INPUT_BRANCH
git checkout $INPUT_BRANCH

if [ -n $INPUT_TAG ]; then
	git tag $INPUT_TAG
fi

git push -f origin $INPUT_BRANCH

if [ -n $INPUT_TAG ]; then
	git push origin $INPUT_TAG
fi