package still88.backend.entity;

import jakarta.persistence.*;
import lombok.*;

@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "shareRefrige")
@Entity

public class ShareRefrige {
    @Id
    @Column(name="shareId", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int shareId;

    // 연관 관계 매핑
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "refrigeId", nullable = false)
    private RefrigeList refrigeList;

    // 연관 관계 매핑
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="userId", nullable = false)
    private User user;
}
