package still88.backend.domain.ingredient.service;

import org.springframework.web.bind.annotation.CookieValue;
import still88.backend.dto.ingredient.RegisterIngredientDTO;

public interface IngredientService {
    void registerIngredient(int refrigeId, RegisterIngredientDTO registerIngredientDTO);
}
