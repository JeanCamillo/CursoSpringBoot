package com.example.algamoney.api.service;

import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.example.algamoney.api.model.Pessoa;
import com.example.algamoney.api.repository.PessoaRepository;

@Service
public class PessoaService {

	@Autowired
	private PessoaRepository pessoaRepository;
	
	public Pessoa atualizar(Long codigo, Pessoa pessoa) {
		Pessoa pessoaExistente = buscaPessoaPeloCodigo(codigo);
		if(pessoaExistente == null) {
			throw new EmptyResultDataAccessException(1);
		}else {
			BeanUtils.copyProperties(pessoa,pessoaExistente,"codigo");			
			return pessoaRepository.save(pessoaExistente);
		}		
	}
	
	public Pessoa buscaPessoaPeloCodigo(Long codigo) {
		Optional<Pessoa> existPessoa = pessoaRepository.findById(codigo);
		if(existPessoa.isPresent()) {	
			return existPessoa.get();
		}
		return null;
	}
}
