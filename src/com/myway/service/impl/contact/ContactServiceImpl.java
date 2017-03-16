package com.myway.service.impl.contact;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.ContactMapper;
import com.myway.pojo.Contact;
import com.myway.service.contact.ContactService;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactMapper contactMapper;

	@Override
	public void insertContact(Contact contact) {
		contactMapper.insert(contact);

	}

}
