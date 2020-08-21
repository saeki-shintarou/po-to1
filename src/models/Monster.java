package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Table(name = "monster")
@NamedQueries({
    @NamedQuery(
            name = "getAllMonster",
            query = "SELECT r FROM Monster AS r ORDER BY r.id DESC"

    		 ),
    		})
@Entity
public class Monster {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;




	@Column(name = "name", nullable = false)
    private String name;

    @Column(name = "hp", nullable = false)
    private Integer hp;

    @Column(name = "vit", nullable = false)
    private Integer vit;

    @Column(name = "power", nullable = false)
    private Integer power;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getHp() {
		return hp;
	}

	public void setHp(Integer hp) {
		this.hp = hp;
	}

	public Integer getVit() {
		return vit;
	}

	public void setVit(Integer vit) {
		this.vit = vit;
	}

	public Integer getPower() {
		return power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}
}