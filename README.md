# Bash Action Template

A template for a [custom GitHub action](https://docs.github.com/en/actions/creating-actions/about-custom-actions) that runs a bash script. This is a [composite action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) that runs the `run.sh` script to execute the custom GitHub action logic. Since it's a composite action, you can still add other steps such as calling other GitHub actions or running code in a `- run: ...` block.

## Usage
Click the green `Use this template` button, `Create a new repository`, fill in your new repo's information and start developing your action! 

There is some metadata in the `action.yml` file you'll want to change when your ready to release your action to the marketplace. If you create many GitHub actions, feel free to fork this repo and edit the metadata, then create your actions from the forked template. This will reduce the amount configuration steps when creating new actions.

### Note
The GitHub workflow **'Initialize'** runs after creating a new repository from this template. The workflow will:
- Clear `README.md` file.
  - Leaves only a heading with your new repo's name.
- The `LICENSE` file is deleted.
- The `FUNDING.yml` file is deleted if the user who created the repo does not own the template.
  -  If you fork this template and create a new action with it, the FUNDING.yml file is preserved. 
- The workflow's `initialize.yml` file is deleted.
  - To prevent initializing repo again. 
- Changes are committed and pushed back to GitHub.
