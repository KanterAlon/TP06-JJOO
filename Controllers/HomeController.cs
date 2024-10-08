using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP06_JJOO.Models;

namespace TP06_JJOO.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

    public IActionResult Deportes()
    {
        var listaDeportes = Deporte.ListarDeportes();
        ViewBag.Deportes = listaDeportes;
        return View();
    }
    public IActionResult Paises()
    {
        var listaPaises = Pais.ListarPaises();
        ViewBag.Paises = listaPaises;
        return View();
    }

    public IActionResult VerDetalleDeporte(int idDeporte)
    {
        var deporte = Deporte.VerInfoDeporte(idDeporte);
        var deportistas = Deportista.ListarDeportistas(idDeporte);
        ViewBag.Deporte = deporte;
        ViewBag.Deportistas = deportistas;
        return View();
    }

    public IActionResult VerDetallePais(int idPais)
    {
        var pais = Pais.VerInfoPais(idPais);
        var deportistas = Pais.ListarDeportistasPorPais(idPais);
        ViewBag.Pais = pais;
        ViewBag.Deportistas = deportistas;
        return View();
    }

    public IActionResult AgregarDeportista()
    {
        var listaPaises = Pais.ListarPaises();
        var listaDeportes = Deporte.ListarDeportes();
        ViewBag.Paises = listaPaises;
        ViewBag.Deportes = listaDeportes;
        return View();
    }

    [HttpPost]
    public IActionResult GuardarDeportista(Deportista dep)
    {
        Deportista.AgregarDeportista(dep);
        return RedirectToAction("Index");
    }


    public IActionResult EliminarDeportista(int idDeportista)
    {
        // Cargar el deportista con VerInfoDeportista y tomar el país
        var deportista = Deportista.VerInfoDeportista(idDeportista);
        int idPais = deportista.IdPais;

        // Eliminar el deportista
        Deportista.EliminarDeportista(idDeportista);

        // Redireccionar al detalle del país
        return RedirectToAction("VerDetallePais", "Home", new { idPais = idPais });
    }


[HttpGet]
    public IActionResult BuscarDeportistaPorNombre(string nombreDeportista)
    {
        // Busca el deportista por nombre completo o parcial
        var deportista = BD.BuscarDeportistaPorNombre(nombreDeportista);
        if (deportista != null)
        {
            // Si se encuentra, redirige a la vista de detalle del deportista
            return RedirectToAction("VerDetalleDeportista", new { idDeportista = deportista.IdDeportista });
        }
        else
        {
            // Si no se encuentra, redirige al inicio con un mensaje de error
            TempData["ErrorMessage"] = "Deportista no encontrado.";
            return RedirectToAction("Index");
        }
    }

    public IActionResult VerDetalleDeportista(int idDeportista)
    {
        var deportista = BD.VerInfoDeportista(idDeportista);
        if (deportista == null)
        {
            TempData["ErrorMessage"] = "Deportista no encontrado.";
            return RedirectToAction("Index");
        }
        ViewBag.Deportista = deportista;
        return View();
    }

    public IActionResult Creditos()
    {
        return View();
    }
}