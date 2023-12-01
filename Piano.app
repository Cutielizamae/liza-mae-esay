import tkinter as tk

class PianoApp(tk.Frame):
    def __init__(self, master=None):
        super().__init__(master)
        self.master = master
        self.pack()
        
        
        self.canvas = tk.Canvas(self, width=800, height=600)
        self.canvas.pack()
        
        
        self.notes = {
            'q': 'C4',
            'w': 'D4',
            'e': 'E4',
            'r': 'F4',
            't': 'G4',
            'y': 'A4',
            'u': 'B4',
            'i': 'C5',
            'o': 'D5',
            'p': 'E5',
            '[': 'F5',
            ']': 'G5',
            '{': 'A5',
            '}': 'B5'
        }
        

        self.master.bind('<KeyPress>', self.play_note)
        

        self.draw_keys()
        
    def play_note(self, event):
        note = self.notes[event.char]
        pygame.mixer.Sound.play(pygame.mixer.SoundFont(note))
        
    def draw_keys(self):
        for i in range(12):
            x = (i * 75) + 30
            y = 30
            self.canvas.create_rectangle(x, y, 75, 150, fill='white')
        
       
        for i in range(12):
            x = (i * 75) + 30
            y = 180
            self.canvas.create_rectangle(x, y, 75, 150, fill='black')
        
root = tk.Tk()
app = PianoApp(root)
root.mainloop()
