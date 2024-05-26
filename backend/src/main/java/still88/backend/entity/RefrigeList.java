package still88.backend.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@NoArgsConstructor
@Table(name = "refrigeList")
@Entity
public class RefrigeList {

    @Id
    @Column(name = "refrigeId", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int refrigeId;

    @Column(nullable = false)
    private String refrigeName;

    // 연관 관계 매핑
    @OneToMany(mappedBy = "refrigeList")
    private List<Refrige> refriges = new ArrayList<>();

    // 연관 관계 매핑
    @OneToMany(mappedBy = "refrigeList")
    private List<ShareRefrige> shareRefriges = new ArrayList<>();

    // 생성자 + Builder로 일관성 유지
    @Builder
    public RefrigeList(String refrigeName) {
        this.refrigeName = refrigeName;
    }
}
