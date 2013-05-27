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
    public class JogoController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Jogo/

        public ActionResult Index()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult TabelaDeJogos()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult PrimeiraFase()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult GRUPOB()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult GRUPOC()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult GRUPOD()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult GRUPOE()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult GRUPOF()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult GRUPOG()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult GRUPOH()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }
        public ActionResult SegundaFase()
        {
            var jogos = db.JOGOS.Include(j => j.CIDADE_SEDE).Include(j => j.ESTADO_JOGOS).Include(j => j.FASE_JOGOS);
            return View(jogos.ToList());
        }



        //
        // GET: /Jogo/Details/5

        public ActionResult Details(int id = 0)
        {
            JOGOS jogos = db.JOGOS.Find(id);
            if (jogos == null)
            {
                return HttpNotFound();
            }
            return View(jogos);
        }

        //
        // GET: /Jogo/Create

        public ActionResult Create()
        {
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID");
            ViewBag.CODESTADO = new SelectList(db.ESTADO_JOGOS, "CODESTADO", "DCRESTADO");
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE");
            return View();
        }

        //
        // POST: /Jogo/Create

        [HttpPost]
        public ActionResult Create(JOGOS jogos)
        {
            if (ModelState.IsValid)
            {
                db.JOGOS.Add(jogos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", jogos.CODCID);
            ViewBag.CODESTADO = new SelectList(db.ESTADO_JOGOS, "CODESTADO", "DCRESTADO", jogos.CODESTADO);
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE", jogos.CODFASE);
            return View(jogos);
        }

        //
        // GET: /Jogo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            JOGOS jogos = db.JOGOS.Find(id);
            if (jogos == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", jogos.CODCID);
            ViewBag.CODESTADO = new SelectList(db.ESTADO_JOGOS, "CODESTADO", "DCRESTADO", jogos.CODESTADO);
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE", jogos.CODFASE);
            return View(jogos);
        }

        //
        // POST: /Jogo/Edit/5

        [HttpPost]
        public ActionResult Edit(JOGOS jogos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(jogos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", jogos.CODCID);
            ViewBag.CODESTADO = new SelectList(db.ESTADO_JOGOS, "CODESTADO", "DCRESTADO", jogos.CODESTADO);
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE", jogos.CODFASE);
            return View(jogos);
        }

        //
        // GET: /Jogo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            JOGOS jogos = db.JOGOS.Find(id);
            if (jogos == null)
            {
                return HttpNotFound();
            }
            return View(jogos);
        }

        //
        // POST: /Jogo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            JOGOS jogos = db.JOGOS.Find(id);
            db.JOGOS.Remove(jogos);
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