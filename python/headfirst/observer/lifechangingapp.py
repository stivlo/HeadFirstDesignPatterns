from __future__ import print_function

import sys
import Tkinter as tkinter


def angel_listener(event):
    print("Don't do it, you might regret it!")


def devil_listener(event):
    print("Come on, do it!")


class Application(tkinter.Frame):
    button = None
    _button_config = dict(
        text="Should I do it?",
        height=10,
        width=30,
        background='blue',
        foreground='white'
    )

    def __init__(self, master=None):
        tkinter.Frame.__init__(self, master)
        self.pack()
        self.create_widgets()

    def create_widgets(self):
        self.button = tkinter.Button(self)
        self.button.config(**self._button_config)

        self.button.bind("<Button-1>", angel_listener)
        self.button.bind("<ButtonRelease-1>", devil_listener)

        self.button.pack(side=tkinter.LEFT)


def main():
    root = tkinter.Tk()

    app = Application(master=root)
    app.master.title('Life-Changing Application')
    app.mainloop()

    try:
        root.destroy()
    except tkinter.TclError:
        pass


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python
