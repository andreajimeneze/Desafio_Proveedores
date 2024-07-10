package cl.praxis.desafioproveedores.services.impl;

import cl.praxis.desafioproveedores.dao.SupplierDAO;
import cl.praxis.desafioproveedores.dao.impl.SupplierDAOImpl;
import cl.praxis.desafioproveedores.models.SupplierDTO;
import cl.praxis.desafioproveedores.services.SupplierService;

import java.util.List;

public class SupplierServiceImpl implements SupplierService {
    private final SupplierDAO objSupplierDao;

    public SupplierServiceImpl() {
        this.objSupplierDao = new SupplierDAOImpl();
    }


    public SupplierDTO selectSupplierById(int id) {
        return objSupplierDao.selectSupplierById(id);
    }
    public List<SupplierDTO> selectSuppliers() {
        return objSupplierDao.selectSuppliers();
    }
    public SupplierDTO insertSupplier(SupplierDTO supplier) {
        return objSupplierDao.insertSupplier(supplier);
    }
    public SupplierDTO updateSupplier(SupplierDTO supplier) {
        return objSupplierDao.updateSupplier(supplier);
    }
    public boolean deleteSupplier(int id) {
        return objSupplierDao.deleteSupplier(id);
    }
}
