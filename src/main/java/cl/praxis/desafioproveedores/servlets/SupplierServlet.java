package cl.praxis.desafioproveedores.servlets;

import cl.praxis.desafioproveedores.models.SupplierDTO;
import cl.praxis.desafioproveedores.services.SupplierService;
import cl.praxis.desafioproveedores.services.impl.SupplierServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/supplier")
public class SupplierServlet extends HttpServlet {

    private SupplierService objSupplierService;

    // Método init para inicializar el DAO

    public void init() {
        objSupplierService = new SupplierServiceImpl();
    }

    // Método doGet para manejar las solicitudes GET
protected void doGet(HttpServletRequest req, HttpServletResponse res)
        throws ServletException {
    String action = req.getParameter("action");

    if (action == null) {
        action = "list";
    }
try {
    switch (action) {
        case "new":
            showNewForm(req, res);
            break;

        case "insert":
            insertSupplier(req, res);
            break;
        case "edit":
            showEditForm(req, res);
            break;
        case "update":
            updateSupplier(req, res);
            break;
        case "delete":
            deleteSupplier(req, res);
            break;
        case "view":
            viewSupplier(req, res);
            break;
        default:
            listSuppliers(req, res);
            break;
    }
    } catch(IOException e) {
    throw new ServletException(e);
    }
}

//Método doPost para manejar las solicitudes POST
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException {
        doGet(req, res);
    }

    // Método para listar proveedores
    private void listSuppliers(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
        List<SupplierDTO> listSuppliers = objSupplierService.selectSuppliers();
        req.setAttribute("listSuppliers", listSuppliers);
        req.getRequestDispatcher("supplier-list.jsp").forward(req, res);
    }

    private void insertSupplier(HttpServletRequest req, HttpServletResponse res)
            throws IOException {
        String name = req.getParameter("name");
        String rut = req.getParameter("rut");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String contactName = req.getParameter("contactName");
        String contactPhone = req.getParameter("contactPhone");

        SupplierDTO newSupplier = new SupplierDTO(name, rut, address, email, phone, contactName, contactPhone);
        objSupplierService.insertSupplier(newSupplier);
        res.sendRedirect("supplier");
    }

    private void updateSupplier(HttpServletRequest req, HttpServletResponse res)
        throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String rut = req.getParameter("rut");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String contact = req.getParameter("contactName");
        String contactPhone = req.getParameter("contactPhone");

        SupplierDTO user = new SupplierDTO(id, name, rut, address, email, phone, contact, contactPhone);
        objSupplierService.updateSupplier(user);
        res.sendRedirect("supplier");
    }

    private void deleteSupplier(HttpServletRequest req, HttpServletResponse res)
        throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        objSupplierService.deleteSupplier(id);
        res.sendRedirect("supplier");
    }

    private void viewSupplier(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        SupplierDTO supplier = objSupplierService.selectSupplierById(id);
        req.setAttribute("supplier", supplier);
        req.getRequestDispatcher("supplier-view.jsp").forward(req, res);
    }

    private void showNewForm(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
        req.getRequestDispatcher("supplier-form.jsp").forward(req, res);
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        SupplierDTO searchSupplier = objSupplierService.selectSupplierById(id);
        req.setAttribute("supplier", searchSupplier);
        req.getRequestDispatcher("supplier-form.jsp").forward(req, res);
    }
}
