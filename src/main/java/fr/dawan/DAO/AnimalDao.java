package fr.dawan.DAO;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;


import fr.dawan.beans.Animal;

@Transactional
public class AnimalDao implements InterfaceDao<Animal> {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Animal createOrUpdate(Animal item) {
		Session session = sessionFactory.getCurrentSession();
		if (item.getId() == null) {
			session.persist(item);
		} else {
			session.merge(item);
		}
		return item;

	}

	@Override
	public Animal findById(int id) {
		
		return null;
	}

	@Override
	public List<Animal> findAll() {
		Session session = sessionFactory.getCurrentSession();
		TypedQuery<Animal> query = session.createQuery("SELECT entity FROM Animal entity", Animal.class);
		return query.getResultList();
	}

	@Override
	public void delete(int id) {
	

	}

	
}
