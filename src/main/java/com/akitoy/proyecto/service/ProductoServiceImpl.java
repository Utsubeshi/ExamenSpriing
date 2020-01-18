package com.akitoy.proyecto.service;

import com.akitoy.proyecto.model.Producto;
import com.akitoy.proyecto.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service

public class ProductoServiceImpl implements ProductoService {

    @Autowired
    ProductoRepository productoRepository;

    @Override
    public List<Producto> getAllProductos() {
        return (List<Producto>) productoRepository.findAll();
    }

    @Override
    public List<Producto> getAllProductos(long id) {
        return null;
    }

   /* @Override
    public List<Producto> getAllProductos(long id) {
        return (List<Producto>) productoRepository.findAllById(id);;
    }*/

    @Override
    public Producto getProductoById(long id) {
        return productoRepository.findById(id).get();
    }

    @Override
    public void saveOrUpdate(Producto producto) {
        productoRepository.save(producto);
    }

    @Override
    public void deleteProducto(long id) {
        productoRepository.deleteById(id);
    }

    @Override
    public void deleteAllProductos() {
        productoRepository.deleteAll();
    }

    @Override
    public Long contarProductos() {

        return productoRepository.count();
    }


}
