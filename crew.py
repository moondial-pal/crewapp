from kivy.uix.boxlayout import BoxLayout
from kivy.properties import ObjectProperty


from kivymd.app import MDApp


class ContentNavigationDrawer(BoxLayout):
    screen_manager = ObjectProperty()
    nav_drawer = ObjectProperty()


class CrewApp(MDApp):
    def build(self):
        self.theme_cls.primary_palette = "Green"

if __name__=='__main__':
    CrewApp().run()