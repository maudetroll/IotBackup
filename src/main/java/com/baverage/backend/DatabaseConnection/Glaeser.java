package com.baverage.backend.DatabaseConnection;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.OneToMany;

import java.util.List;
import lombok.Getter;
import lombok.Setter;
import lombok.Data;
import javax.persistence.GenerationType;
import javax.persistence.GeneratedValue;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import com.fasterxml.jackson.annotation.JsonBackReference;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Getter
@Setter
public class Glaeser implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
        String name;

	int leergewicht;
	
	@OneToMany (mappedBy="glas")
        @JsonBackReference
	private List<Bestellungen> bestellungen;
}
