# Random Draw

### Installation
1. Clone this repository
2. Run `bundle install`
3. That's all!

### Quick Start

Random Draw is a command line application. To get started optionally make the files `recursive_shapes.rb` and `draw_random.rb` executable with `chmod +x recursive_shapes.rb draw_random.rb`. Alternatively the files can be run with ruby e.g. `ruby recursive_shapes.rb`.

`recursive_shapes.rb` takes an optional argument of `circle` such as `./recursive_shapes.rb circle` the default being recursive squares.

Generated files will be output into the images directory. `recursive_shapes.rb` generates file names based on the colors of the shapes and the rarity of the color. An example would be `violet rarity=5 | purple rarity=2 | dark-violet rarity=3 | monza rarity=1 | cherry-blossom rarity=5.png`
5 is the most common and 1 is the most rare. The chance of getting a particular color varies from 4% to 36%.

`draw_random.rb` has no rarity system and the filename will simply be `random_` followed by the current time.