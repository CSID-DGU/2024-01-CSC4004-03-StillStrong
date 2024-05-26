package still88.backend.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@NoArgsConstructor
@Table(name = "user")
@Entity
public class User{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment
    @Column(nullable = false)
    private int userId;

    // 연관 관계 매핑
    @OneToMany(mappedBy = "user")
    private List<ShareRefrige> shareRefriges = new ArrayList<>();

    // 연관 관계 매핑
    @OneToMany(mappedBy = "user")
    private List<Refrige> refriges = new ArrayList<>();

    @Column(nullable = false, length=10)
    private String userNickname;

    @Column(nullable = false)
    private int userAge;

    @Column(nullable = false)
    private Boolean userGender;

    @Column(nullable = false)
    private String userImage;

    @Column
    private String userAllergy;

    @Column
    private String userFavorite;

    // 생성자 + Builder로 일관성 유지
    @Builder
    public User(String userNickname, int userAge, Boolean userGender, String userImage, String userAllergy, String userFavorite) {
        this.userNickname = userNickname;
        this.userAge = userAge;
        this.userGender = userGender;
        this.userImage = userImage;
        this.userAllergy = userAllergy;
        this.userFavorite = userFavorite;
    }
}
