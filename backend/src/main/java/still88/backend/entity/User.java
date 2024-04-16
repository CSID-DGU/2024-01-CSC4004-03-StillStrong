package still88.backend.entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@NoArgsConstructor
@Table(name = "user")
@Entity
public class User{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment
    @Column(nullable = false)
    private int userId;

    @Column(nullable = false, length=10)
    private String userNickname;

    @Column(nullable = false)
    private int userAge;

    @Column(nullable = false)
    private Boolean userGender;

    @Column(nullable = false)
    private int userImage;

    // 생성자 + Builder로 일관성 유지
    @Builder
    public User(String userNickname, int userAge, Boolean userGender, int userImage) {
        this.userNickname = userNickname;
        this.userAge = userAge;
        this.userGender = userGender;
        this.userImage = userImage;
    }
}