# Компилятор
CXX = g++

# Флаги компиляции
CXXFLAGS = -std=c++17 -Ilib/multiprecision/include -Ilib/config/include

# Исходный файл
SRC = GFSPX_Cipher.cpp

# Имя исполняемого файла
TARGET = gfspx

# Правило для сборки программы
all: $(TARGET) $(SRC)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

# Правило для очистки
clean:
	rm -f $(TARGET)