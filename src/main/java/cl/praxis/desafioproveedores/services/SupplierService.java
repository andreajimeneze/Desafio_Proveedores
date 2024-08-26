package cl.praxis.desafioproveedores.services;

import cl.praxis.desafioproveedores.models.SupplierDTO;

import java.util.List;

public interface SupplierService {

    SupplierDTO selectSupplierById(int id);
    List<SupplierDTO> selectSuppliers();
    SupplierDTO insertSupplier(SupplierDTO supplier);
    SupplierDTO updateSupplier(SupplierDTO supplier);
    boolean deleteSupplier(int id);
}
