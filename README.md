# font-typekit-generator-action
An action for typekit generation along with CSS from TTF files

To use this action add following to your workflow file

```yml
- name: Font TypeKit Generation Action
  uses: sharadcodes/font-typekit-generator-action@v1.0
  with:
    input-folder: "my_fonts" # This is a Required field & this folder has original font files in TTF format
    output-folder: "converted_fonts" # This is a Required field & this folder will be used to store converted font files
