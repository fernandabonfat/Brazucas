using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Brazucas.Models;

namespace Brazucas.Controllers
{
    public class TipoUsuarioController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /TipoUsuario/

        public ActionResult Index()
        {
            return View(db.TIPO_USUARIOS.ToList());
        }

        //
        // GET: /TipoUsuario/Details/5

        public ActionResult Details(int id = 0)
        {
            TIPO_USUARIOS tipo_usuarios = db.TIPO_USUARIOS.Find(id);
            if (tipo_usuarios == null)
            {
                return HttpNotFound();
            }
            return View(tipo_usuarios);
        }

        //
        // GET: /TipoUsuario/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /TipoUsuario/Create

        [HttpPost]
        public ActionResult Create(TIPO_USUARIOS tipo_usuarios)
        {
            if (ModelState.IsValid)
            {
                db.TIPO_USUARIOS.Add(tipo_usuarios);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipo_usuarios);
        }

        //
        // GET: /TipoUsuario/Edit/5

        public ActionResult Edit(int id = 0)
        {
            TIPO_USUARIOS tipo_usuarios = db.TIPO_USUARIOS.Find(id);
            if (tipo_usuarios == null)
            {
                return HttpNotFound();
            }
            return View(tipo_usuarios);
        }

        //
        // POST: /TipoUsuario/Edit/5

        [HttpPost]
        public ActionResult Edit(TIPO_USUARIOS tipo_usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipo_usuarios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipo_usuarios);
        }

        //
        // GET: /TipoUsuario/Delete/5

        public ActionResult Delete(int id = 0)
        {
            TIPO_USUARIOS tipo_usuarios = db.TIPO_USUARIOS.Find(id);
            if (tipo_usuarios == null)
            {
                return HttpNotFound();
            }
            return View(tipo_usuarios);
        }

        //
        // POST: /TipoUsuario/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            TIPO_USUARIOS tipo_usuarios = db.TIPO_USUARIOS.Find(id);
            db.TIPO_USUARIOS.Remove(tipo_usuarios);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}