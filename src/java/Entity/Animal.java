/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author carto
 */
@Entity
@Table(name = "tb_animal")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Animal.findAll", query = "SELECT a FROM Animal a"),
    @NamedQuery(name = "Animal.findByNome", query = "SELECT a FROM Animal a WHERE a.nome = :nome"),
    @NamedQuery(name = "Animal.findByIdade", query = "SELECT a FROM Animal a WHERE a.idade = :idade"),
    @NamedQuery(name = "Animal.findByGeneroAnimal", query = "SELECT a FROM Animal a WHERE a.generoAnimal = :generoAnimal"),
    @NamedQuery(name = "Animal.findByTipoAnimal", query = "SELECT a FROM Animal a WHERE a.tipoAnimal = :tipoAnimal"),
    @NamedQuery(name = "Animal.findByIDcliente", query = "SELECT a FROM Animal a WHERE a.iDcliente = :iDcliente"),
    @NamedQuery(name = "Animal.findByNomeCliente", query = "SELECT a FROM Animal a WHERE a.nomeCliente = :nomeCliente")})
public class Animal implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Column(name = "idade")
    private Integer idade;
    @Column(name = "genero_animal")
    private String generoAnimal;
    @Column(name = "Tipo_Animal")
    private String tipoAnimal;
    @Column(name = "ID_cliente")
    private Integer iDcliente;
    @Column(name = "nomeCliente")
    private String nomeCliente;

    public Animal() {
    }

    public Animal(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getIdade() {
        return idade;
    }

    public void setIdade(Integer idade) {
        this.idade = idade;
    }

    public String getGeneroAnimal() {
        return generoAnimal;
    }

    public void setGeneroAnimal(String generoAnimal) {
        this.generoAnimal = generoAnimal;
    }

    public String getTipoAnimal() {
        return tipoAnimal;
    }

    public void setTipoAnimal(String tipoAnimal) {
        this.tipoAnimal = tipoAnimal;
    }

    public Integer getIDcliente() {
        return iDcliente;
    }

    public void setIDcliente(Integer iDcliente) {
        this.iDcliente = iDcliente;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nome != null ? nome.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Animal)) {
            return false;
        }
        Animal other = (Animal) object;
        if ((this.nome == null && other.nome != null) || (this.nome != null && !this.nome.equals(other.nome))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Animal[ nome=" + nome + " ]";
    }
    
}
