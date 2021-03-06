class Hangman


  def initialize()
    @images = []
    self.images_loader
    @current_image = images[0]
  end

  def current_image
    @current_image
  end

  def images
    @images
  end

  def image_change(bad_count, attempts)
    @current_image = @images[attempts - bad_count]
  end

  def images_loader
    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||
                    | |/
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    \"\"\"\"\"\"\"\"\"\"|_        |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."

    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||.-''.
                    | |/         |/  _  \\
                    | |          ||  `/,|
                    | |          (\\\\`_.'
                    | |         .-`--'.
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    | |
                    \"\"\"\"\"\"\"\"\"\"|_        |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."
    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||.-''.
                    | |/         |/  _  \\
                    | |          ||  `/,|
                    | |          (\\\\`_.'
                    | |         .-`--'.
                    | |         Y . . Y
                    | |          |   |
                    | |          | . |
                    | |          |   |
                    | |
                    | |
                    | |
                    | |
                    | |
                    \"\"\"\"\"\"\"\"\"\"|_        |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."
    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||.-''.
                    | |/         |/  _  \\
                    | |          ||  `/,|
                    | |          (\\\\`_.'
                    | |         .-`--'.
                    | |        /Y . . Y
                    | |       // |   |
                    | |      //  | . |
                    | |     ')   |   |
                    | |
                    | |
                    | |
                    | |
                    | |
                    \"\"\"\"\"\"\"\"\"\"|_        |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."
    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||.-''.
                    | |/         |/  _  \\
                    | |          ||  `/,|
                    | |          (\\\\`_.'
                    | |         .-`--'.
                    | |        /Y . . Y\\
                    | |       // |   | \\\\
                    | |      //  | . |  \\\\
                    | |     ')   |   |   (`
                    | |
                    | |
                    | |
                    | |
                    | |
                    \"\"\"\"\"\"\"\"\"\"|_        |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."
    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||.-''.
                    | |/         |/  _  \\
                    | |          ||  `/,|
                    | |          (\\\\`_.'
                    | |         .-`--'.
                    | |        /Y . . Y\\
                    | |       // |   | \\\\
                    | |      //  | . |  \\\\
                    | |     ')   |   |   (`
                    | |          ||
                    | |          ||
                    | |          ||
                    | |          ||
                    | |         / |
                    \"\"\"\"\"\"\"\"\"\"|_`-'     |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."
    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||.-''.
                    | |/         |/  _  \\
                    | |          ||  `/,|
                    | |          (\\\\`_.'
                    | |         .-`--'.
                    | |        /Y . . Y\\
                    | |       // |   | \\\\
                    | |      //  | . |  \\\\
                    | |     ')   |   |   (`
                    | |          ||'
                    | |          ||
                    | |          ||
                    | |          ||
                    | |         / |
                    \"\"\"\"\"\"\"\"\"\"|_`-'     |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."

    @images << "
                     ___________.._______
                    | .__________))______|
                    | | / /      ||
                    | |/ /       ||
                    | | /        ||.-''.
                    | |/         |/  _  \\
                    | |          ||  `/,|
                    | |          (\\\\`_.'
                    | |         .-`--'.
                    | |        /Y . . Y\\
                    | |       // |   | \\\\
                    | |      //  | . |  \\\\
                    | |     ')   |   |   (`
                    | |          ||'||
                    | |          || ||
                    | |          || ||
                    | |          || ||
                    | |         / | | \\
                    \"\"\"\"\"\"\"\"\"\"|_`-' `-' |\"\"\"|
                    |\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|
                    | |        \\ \\        | |
                    : :         \\ \\       : :
                    . .          `'       . ."
  end
end
