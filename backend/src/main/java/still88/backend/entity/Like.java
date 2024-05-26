package still88.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
@IdClass(LikePK.class)
@Table(name = "likes")
@Entity
public class Like {

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "userId", nullable = false)
    private User userId;

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipeId", nullable = false)
    private Recipe recipeId;
}
