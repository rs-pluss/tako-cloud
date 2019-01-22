package sia.tacocloud.data.ingredient;

import sia.tacocloud.model.Ingredient;

public interface IngredientRepository {

    Iterable<Ingredient> findAll();

    Ingredient findById(String id);

    Ingredient save(Ingredient ingredient);

}
