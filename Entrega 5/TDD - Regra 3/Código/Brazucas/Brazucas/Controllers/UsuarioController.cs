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
    public class UsuarioController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();
                
        public ActionResult Acesso()
        {
            return View();
        }
     
        //
        // GET: /Usuario/

        public ActionResult Index()
        {
            var usuarios = db.USUARIOS.Include(u => u.TIPO_USUARIOS);
            return View(usuarios.ToList());
        }

        //
        // GET: /Usuario/Details/5

        public ActionResult Details(int id = 0)
        {
            USUARIOS usuarios = db.USUARIOS.Find(id);
            if (usuarios == null)
            {
                return HttpNotFound();
            }
            return View(usuarios);
        }

        //
        // GET: /Usuario/Create

        public ActionResult Create()
        {
            ViewBag.CODTIPUSU = new SelectList(db.TIPO_USUARIOS, "CODTIPUSU", "DCRTIPUSU");
            return View();
        }

        //
        // POST: /Usuario/Create

        [HttpPost]
        public ActionResult Create(USUARIOS usuarios)
        {
            if (ModelState.IsValid)
            {
                db.USUARIOS.Add(usuarios);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODTIPUSU = new SelectList(db.TIPO_USUARIOS, "CODTIPUSU", "DCRTIPUSU", usuarios.CODTIPUSU);
            return View(usuarios);
        }

        //
        // GET: /Usuario/Edit/5

        public ActionResult Edit(int id = 0)
        {
            USUARIOS usuarios = db.USUARIOS.Find(id);
            if (usuarios == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODTIPUSU = new SelectList(db.TIPO_USUARIOS, "CODTIPUSU", "DCRTIPUSU", usuarios.CODTIPUSU);
            return View(usuarios);
        }

        //
        // POST: /Usuario/Edit/5

        [HttpPost]
        public ActionResult Edit(USUARIOS usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(usuarios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODTIPUSU = new SelectList(db.TIPO_USUARIOS, "CODTIPUSU", "DCRTIPUSU", usuarios.CODTIPUSU);
            return View(usuarios);
        }

        //
        // GET: /Usuario/Delete/5

        public ActionResult Delete(int id = 0)
        {
            USUARIOS usuarios = db.USUARIOS.Find(id);
            if (usuarios == null)
            {
                return HttpNotFound();
            }
            return View(usuarios);
        }

        //
        // POST: /Usuario/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            USUARIOS usuarios = db.USUARIOS.Find(id);
            db.USUARIOS.Remove(usuarios);
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