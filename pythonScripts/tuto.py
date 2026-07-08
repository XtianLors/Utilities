import tkinter as tk

class ShieldyApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("SHIELDY")
        self.geometry("500x500")
        self.resizable(False, False)

        main_frame = tk.Frame(self)
        main_frame.pack(expand=True, fill="both", padx=10, pady=10)

        main_frame.columnconfigure(0, weight=0)
        main_frame.columnconfigure(1, weight=1)
        main_frame.rowconfigure(0, weight=0)
        main_frame.rowconfigure(1, weight=1)
        main_frame.rowconfigure(2, weight=1)

        # Input PATH sobre SCIFER
        path_label = tk.Label(main_frame, text="Carpeta PATH:")
        path_label.grid(row=0, column=0, sticky="w", padx=5, pady=(0,18))
        path_entry = tk.Entry(main_frame, width=15)
        path_entry.grid(row=0, column=0, padx=5, pady=(18,2), sticky="e")

        # Input NOTAS sobre Archivos
        notes_label = tk.Label(main_frame, text="Notas:")
        notes_label.grid(row=0, column=1, sticky="w", padx=5, pady=(0,2))
        notes_entry = tk.Entry(main_frame, width=25)
        notes_entry.grid(row=0, column=1, padx=5, pady=(18,2), sticky="e")

        # Botón SCIFER alineado con Archivos
        scifer_btn = tk.Button(main_frame, text="SCIFER", width=12)
        scifer_btn.grid(row=1, column=0, padx=5, pady=5, sticky="nsew")

        archivos_label = tk.Label(main_frame, text="Archivos", relief="groove", height=3, width=20, anchor="w")
        archivos_label.grid(row=1, column=1, padx=5, pady=5, sticky="nsew")

        # Botón INIT alineado con Guardado
        init_btn = tk.Button(main_frame, text="INIT", width=12)
        init_btn.grid(row=2, column=0, padx=5, pady=5, sticky="nsew")

        guardado_label = tk.Label(main_frame, text="Guardado", relief="groove", height=3, width=20, anchor="w")
        guardado_label.grid(row=2, column=1, padx=5, pady=5, sticky="nsew")

if __name__ == "__main__":
    app = ShieldyApp()
    app.mainloop()
