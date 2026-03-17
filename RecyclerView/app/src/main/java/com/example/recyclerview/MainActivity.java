package com.example.recyclerview;

import android.os.Bundle;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;

import com.example.recyclerview.models.SuperHero;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private ArrayList<SuperHero> lista;
    RecyclerView recyclerView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

        this.buildSuperHeroes();

        this.recyclerView = findViewById(R.id.recyclerView);
    }

    private void buildSuperHeroes(){
        Toast.makeText(this, "Build", Toast.LENGTH_SHORT).show();

        SuperHero sp1 = new SuperHero("Mário1", 1);
        SuperHero sp2 = new SuperHero("Mário2", 1);
        SuperHero sp3 = new SuperHero("Mário3", 1);
        SuperHero sp4 = new SuperHero("Mário4", 1);
        SuperHero sp5 = new SuperHero("Mário5", 1);

        this.lista = new ArrayList<>();

        this.lista.add(sp1);
        this.lista.add(sp2);
        this.lista.add(sp3);
        this.lista.add(sp4);
        this.lista.add(sp5);
    }
}