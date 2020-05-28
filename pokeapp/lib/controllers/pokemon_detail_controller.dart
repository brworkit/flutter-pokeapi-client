mixin NextPage {
  void next() {

  }
}

mixin PreviowsPage {
  void previous() {
    
  }
}

class PokemonDetailController with NextPage, PreviowsPage {

    PokemonDetailController();

}