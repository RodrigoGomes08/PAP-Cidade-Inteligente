package com.example.recyclerview;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.recyclerview.models.SuperHero;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class HeroAdapter extends RecyclerView.Adapter<HeroAdapter.ViewHolder> {

    private ArrayList<SuperHero> lista;

    public HeroAdapter(ArrayList<SuperHero> lista){
        this.lista = lista;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.item_hero, parent, false);

        return new ViewHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        // Vai fazer o set das vars
        // 1. Apanhar o elemento a lista
        SuperHero hero = this.lista.get(position);

        holder.txtNome.setText(hero.getNome());
        holder.imgHero.setImageResource(hero.getImageId());

        holder.itemView.setOnClickListener(v -> {
                Toast.makeText(v.getContext(), hero.toString(), Toast.LENGTH_SHORT).show();
    });
    }

    @Override
    public int getItemCount() {
        return this.lista.size();
    }

    class ViewHolder extends RecyclerView.ViewHolder {
        ImageView imgHero;
        TextView txtNome;

        ViewHolder(View itemView) {
            super(itemView);

            txtNome = itemView.findViewById(R.id.txtNome);
            imgHero = itemView.findViewById(R.id.imgHero);
        }

    }

}
