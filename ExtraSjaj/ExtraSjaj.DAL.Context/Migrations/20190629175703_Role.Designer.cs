﻿// <auto-generated />
using System;
using ExtraSjaj.DAL.Context;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace ExtraSjaj.DAL.Context.Migrations
{
    [DbContext(typeof(ExtraSjajContext))]
    [Migration("20190629175703_Role")]
    partial class Role
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.2.4-servicing-10062")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("ExtraSjaj.Common.Models.Musterija", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Adresa");

                    b.Property<string>("BrojTelefona");

                    b.Property<string>("Ime");

                    b.Property<string>("Prezime");

                    b.Property<DateTime>("VrijemeKreiranjaMusterije");

                    b.HasKey("Id");

                    b.ToTable("Musterije");
                });

            modelBuilder.Entity("ExtraSjaj.Common.Models.Racun", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("BrojTepiha");

                    b.Property<int>("MusterijaId");

                    b.Property<bool>("Placen");

                    b.Property<double>("Vrijednost");

                    b.Property<DateTime>("VrijemeKreiranjaRacuna");

                    b.Property<DateTime>("VrijemePlacanjaRacuna");

                    b.HasKey("Id");

                    b.HasIndex("MusterijaId");

                    b.ToTable("Racuni");
                });

            modelBuilder.Entity("ExtraSjaj.Common.Models.Role", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Roles");
                });

            modelBuilder.Entity("ExtraSjaj.Common.Models.Tepih", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<float>("Duzina");

                    b.Property<float>("Kvadratura");

                    b.Property<int>("RacunId");

                    b.Property<float>("Sirina");

                    b.HasKey("Id");

                    b.HasIndex("RacunId");

                    b.ToTable("Tepisi");
                });

            modelBuilder.Entity("ExtraSjaj.Common.Models.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("BrojTelefona");

                    b.Property<string>("Ime");

                    b.Property<string>("JMBG");

                    b.Property<string>("Password");

                    b.Property<string>("Prezime");

                    b.Property<string>("Username");

                    b.HasKey("Id");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("ExtraSjaj.Common.Models.Racun", b =>
                {
                    b.HasOne("ExtraSjaj.Common.Models.Musterija", "Musterija")
                        .WithMany()
                        .HasForeignKey("MusterijaId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("ExtraSjaj.Common.Models.Tepih", b =>
                {
                    b.HasOne("ExtraSjaj.Common.Models.Racun", "Racun")
                        .WithMany()
                        .HasForeignKey("RacunId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
