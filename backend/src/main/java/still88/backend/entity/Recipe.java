package still88.backend.entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@NoArgsConstructor
@Table(name = "recipe")
@Entity
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment
    @Column(nullable = false)
    private int recipeId;

    @Column(nullable = false)
    private String recipeName;

    @Column(nullable = false)
    private String recipeCategory;

    // JSON 타입으로 지정
    @Column(columnDefinition = "json", nullable = false)
    private String recipeDescription;

    // JSON 타입으로 지정
    @Column(columnDefinition = "json", nullable = false)
    private String recipeImage;

    // TEXT 타입으로 지정
    @Column(columnDefinition = "text", nullable = false)
    private String recipeIngredient;

    @Column(nullable = false)
    private int likeNum;

    // 생성자 + Builder로 일관성 유지
    @Builder
    public Recipe(String recipeName, String recipeCategory, String recipeDescription,
                  String recipeImage, String recipeIngredient, int likeNum) {
        this.recipeName = recipeName;
        this.recipeCategory = recipeCategory;
        this.recipeDescription = recipeDescription;
        this.recipeImage = recipeImage;
        this.recipeIngredient = recipeIngredient;
        this.likeNum = likeNum;
    }
}
