package com.baverage.backend.restcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.web.util.HtmlUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import java.lang.Iterable;

import com.baverage.backend.repo.BestellungRepo;
import com.baverage.backend.repo.TestTableRepo;
import com.baverage.backend.DatabaseConnection.AktiveBestellung;
import com.baverage.backend.DatabaseConnection.Bestellungen;
import com.baverage.backend.DatabaseConnection.TestTable;

@Controller
@RequestMapping(path="/api")
public class CustomRestController {

    @Autowired
    private BestellungRepo repo;

    @Autowired
    private TestTableRepo testTableRepo;

    @GetMapping(value="/getAktiveBestellungen")
    public @ResponseBody Iterable<AktiveBestellung> aktiveBestellungen(Model model) {
        return this.repo.getAktiveBestellungen();
    }

    @GetMapping(value="/getAlleBestellungen")
    public @ResponseBody Iterable<Bestellungen> alleBestellungen(Model model) {
        return this.repo.findAll();
    }

    @GetMapping(value="/getID")
    public @ResponseBody Iterable<Bestellungen> getID(Model model) {
        return this.repo.getID();
    }

    @GetMapping(path="/all")
    public @ResponseBody Iterable<TestTable> getAll() {
      // This returns a JSON or XML with the users
      return this.testTableRepo.findAll();
    }

    @GetMapping(path="/one")
    public @ResponseBody TestTable getOne() {
      // This returns a JSON or XML with the users
      try {
          return this.testTableRepo.findById(1).get();
      }
      catch (NoSuchElementException e) {
          System.err.println(e);
      }
      return new TestTable(1, "test");
    }
    
      @PostMapping(path="/add") // Map ONLY POST Requests
      public @ResponseBody String addNewUser (@RequestParam String name) {
        // @ResponseBody means the returned String is the response, not a view name
        // @RequestParam means it is a parameter from the GET or POST request

        TestTable n = new TestTable();
        n.setName(name);
        testTableRepo.save(n);
        return "Saved";
  }

    @GetMapping(path="/allTables")
    public @ResponseBody Collection<TestTable> getAllTables() {
      // This returns a JSON or XML with the users
      return this.testTableRepo.getAllTables();
    }
}

