import typer

app = typer.Typer()


@app
def hello(name):
    print(f'Hello, {name}')3