#include<stdio.h>
#include<stdlib.h>

typedef char boolean;
boolean True = 1;
boolean False = 0;

typedef struct ll ll;
struct ll {
  ll* next;
  void* data;
};

typedef struct stack stack;
struct stack {
  ll* head;
  int length;
  void(*deleteData)(void*);
};

struct stack_pop_t {
  void* data;
  boolean success;
};


ll* ll_init(ll* next, void* data);
void ll_delete(ll* self, void(*deleteData)(void*));
stack* stack_init();
void stack_delete(stack* self);
void stack_push(stack* self, void* data);
struct stack_pop_t stack_pop(stack* self);

ll* ll_init(ll* next, void* data) {
  ll* ret;
  ret = malloc(sizeof(ll));
  ret->next = next;
  ret->data = data;
  return ret;
}
void ll_delete(ll* self, void(*deleteData)(void*)) {
  if(deleteData) {
    (*deleteData)(self->data);
  }
  free(self);
}
stack* stack_init(void(*deleteData)(void*)) {
  stack* ret;
  ret = malloc(sizeof(stack));
  ret->head = ll_init(NULL, NULL);
  ret->length = 0;
  ret->deleteData = deleteData;
  return ret;
}
void stack_delete(stack* self) {
  ll* ptr = self->head;
  void(*deleteData)(void*) = self->deleteData;
  while(ptr) {
    ll_delete(ptr, deleteData);
    ptr = ptr->next;
  }
  free(self);
}
void stack_push(stack* self, void* data) {
  ll* newLL = ll_init(self->head, data);
  self->head = newLL;
  (self->length)++;
}
struct stack_pop_t stack_pop(stack* self) {
  ll* ptr;
  ll* nxt;
  void* data;
  if(self->length) {
    nxt = (ptr = self->head)->next;
    data = ptr->data;
    ll_delete(ptr,self->deleteData);
    self->head = nxt;
    return (struct stack_pop_t){data, True};
  }
  return (struct stack_pop_t){NULL, False};
}

int main(){
  stack* s = stack_init(NULL);
  printf("%x\n", (size_t)s);
  return 0;
}















  















