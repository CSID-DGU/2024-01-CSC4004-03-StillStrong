package still88.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.lang.annotation.Target;

@Getter
@NoArgsConstructor
@Table(name = "idPassword")
@Entity
public class IdPassword {
    @Id
    @OneToOne
    @JoinColumn(name="userId", nullable = false)
    private User user;

    @Column(nullable = false)
    private String secretEmail;

    @Column(nullable = false)
    private String secretPassword;

    // 생성자 + Builder로 일관성 유지
    @Builder
    public IdPassword(String secretEmail, String secretPassword) {
        this.secretEmail = secretEmail;
        this.secretPassword = secretPassword;
    }
}
